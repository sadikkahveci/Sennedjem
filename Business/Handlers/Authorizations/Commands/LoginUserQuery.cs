﻿using Business.Constants;
using Business.Services.Authentication;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Commands
{
    public class LoginUserQuery : IRequest<IDataResult<AccessToken>>
    {
        public string Email { get; set; }
        public string Password { get; set; }

        public class LoginUserQueryHandler : IRequestHandler<LoginUserQuery, IDataResult<AccessToken>>
        {
            private readonly IUserRepository _userDal;
            private readonly ITokenHelper _tokenHelper;

            public LoginUserQueryHandler(IUserRepository userDal, ITokenHelper tokenHelper)
            {
                _userDal = userDal;
                _tokenHelper = tokenHelper;
            }
            //[LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<AccessToken>> Handle(LoginUserQuery request, CancellationToken cancellationToken)
            {
                var user = await _userDal.GetAsync(u => u.Email == request.Email);

                if (user == null)
                    return new ErrorDataResult<AccessToken>(Messages.UserNotFound);

                if (!HashingHelper.VerifyPasswordHash(request.Password, user.PasswordSalt, user.PasswordHash))
                    return new ErrorDataResult<AccessToken>(Messages.PasswordError);

                var claims = _userDal.GetClaims(user.UserId);
                var accessToken = _tokenHelper.CreateToken<SFwToken>(user, claims);

                return new SuccessDataResult<AccessToken>(accessToken, Messages.SuccessfulLogin);
            }
        }
    }
}
