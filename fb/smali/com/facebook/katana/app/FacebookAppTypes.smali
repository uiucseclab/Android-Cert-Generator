.class public Lcom/facebook/katana/app/FacebookAppTypes;
.super Ljava/lang/Object;
.source "yyyy-MM-dd\'T\'HH-mm-ssZ"


# static fields
.field public static final a:Lcom/facebook/config/application/FbAppType;

.field public static final b:Lcom/facebook/config/application/FbAppType;

.field public static final c:Lcom/facebook/config/application/FbAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide v12, 0x51a67c8e50L

    .line 13
    new-instance v0, Lcom/facebook/config/application/FbAppType;

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    const-string v4, "62f8ce9f74b12f84c123cc23437a4a32"

    const-string v5, "0SmP9AZrwrsbrHR2RyVaQ-sqRoukl2MAjk04Ibg"

    const-string v6, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->n()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/facebook/config/application/IntendedAudience;->DEVELOPMENT:Lcom/facebook/config/application/IntendedAudience;

    sget-object v9, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    sget-object v10, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/config/application/FbAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/config/application/IntendedAudience;Lcom/facebook/config/application/Product;Lcom/facebook/common/build/SignatureType;)V

    sput-object v0, Lcom/facebook/katana/app/FacebookAppTypes;->a:Lcom/facebook/config/application/FbAppType;

    .line 25
    new-instance v0, Lcom/facebook/config/application/FbAppType;

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    const-string v4, "62f8ce9f74b12f84c123cc23437a4a32"

    const-string v5, "0e1ruJ7mZbBXS0h1Ffa7wWK4SMcshAyydjcm1qg"

    const-string v6, "pLdFLi7Y9fGRBYynu_0msNMhS_w"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->n()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/facebook/config/application/IntendedAudience;->FACEBOOK:Lcom/facebook/config/application/IntendedAudience;

    sget-object v9, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    sget-object v10, Lcom/facebook/common/build/SignatureType;->IN_HOUSE:Lcom/facebook/common/build/SignatureType;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/config/application/FbAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/config/application/IntendedAudience;Lcom/facebook/config/application/Product;Lcom/facebook/common/build/SignatureType;)V

    sput-object v0, Lcom/facebook/katana/app/FacebookAppTypes;->b:Lcom/facebook/config/application/FbAppType;

    .line 37
    new-instance v0, Lcom/facebook/config/application/FbAppType;

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    const-string v4, "62f8ce9f74b12f84c123cc23437a4a32"

    const-string v5, "0e1ruJ7mZbBWslnLnQQ5RPITlJs7QBrg8JYbTyg"

    const-string v6, "ijxLJi1yGs1JpL-X1SExmchvork"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->n()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/facebook/config/application/IntendedAudience;->PUBLIC:Lcom/facebook/config/application/IntendedAudience;

    sget-object v9, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    sget-object v10, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/config/application/FbAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/config/application/IntendedAudience;Lcom/facebook/config/application/Product;Lcom/facebook/common/build/SignatureType;)V

    sput-object v0, Lcom/facebook/katana/app/FacebookAppTypes;->c:Lcom/facebook/config/application/FbAppType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
