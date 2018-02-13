import jwt, time
import pgsite.settings

def identify(authorization):
    result = {}
    if (authorization):
        auth_tokenArr = authorization.split(" ")
        if (not auth_tokenArr or auth_tokenArr[1] != 'JWT' or not len(auth_tokenArr[2]) or len(auth_tokenArr) != 3):
            # 验证头信息不正确
            result['code'] = 2
            result['msg'] = '验证头信息不正确'
        else:
            auth_token = auth_tokenArr[2]
            payload = jwt.decode(auth_token, pgsite.settings.SECRET_KEY, options={'verify_exp': False})
            if ('user_id' in payload and payload['user_id']):
                if (payload['exp'] < int(time.time())):
                    # token过期
                    result['code'] = 4
                    result['msg'] = 'token过期'
                else:
                    result['code'] = 100
                    result['msg'] = 'Token验证通过'
                    result['payload'] = payload
            else:
                # token无效
                result['code'] = 3
                result['msg'] = 'token无效'
    else:
        # 没有提供认证token
        result['code'] = 1
        result['msg'] = '没有提供认证token'

    return result