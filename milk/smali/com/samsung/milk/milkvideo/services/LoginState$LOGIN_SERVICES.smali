.class public final enum Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;
.super Ljava/lang/Enum;
.source "LoginState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/services/LoginState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOGIN_SERVICES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

.field public static final enum FACEBOOK:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

.field public static final enum GOOGLE:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

.field public static final enum SAMSUNG:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    const-string v1, "SAMSUNG"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->SAMSUNG:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    .line 27
    new-instance v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->FACEBOOK:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    .line 28
    new-instance v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->GOOGLE:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    sget-object v1, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->SAMSUNG:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->FACEBOOK:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->GOOGLE:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->$VALUES:[Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->$VALUES:[Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    return-object v0
.end method
