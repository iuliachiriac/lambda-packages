import logging
from onelogin.saml2.auth import OneLogin_Saml2_Auth


def test():
    auth = OneLogin_Saml2_Auth({})
    print auth


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    test()
