# Created by: Adrian Jaskuła <aj@48k.io>
# $FreeBSD$

PORTNAME=	orientdb
PORTVERSION=	2.2.29
CATEGORIES=	java databases
MASTER_SITES=	http://orientdb.com/download.php?file=/
PKGNAMESUFFIX=	community
DISTNAME=	${PORTNAME}-${PKGNAMESUFFIX}-${PORTVERSION}

MAINTAINER=	aj@48k.io
COMMENT=	OrientDB Multi-Model NoSQL Database

LICENSE=	APACHE20

USES=	zip

USE_JAVA=	yes
JAVA_VERSION=	1.8+

NO_ARCH=	yes
NO_BUILD=	yes
NO_TEST=	yes

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PORTNAME}
	cd ${WRKSRC}; ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/${PORTNAME}

.include <bsd.port.mk>
