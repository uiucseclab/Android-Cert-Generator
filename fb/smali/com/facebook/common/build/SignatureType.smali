.class public final enum Lcom/facebook/common/build/SignatureType;
.super Ljava/lang/Enum;
.source "video_height"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/build/SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/build/SignatureType;

.field public static final enum DEBUG:Lcom/facebook/common/build/SignatureType;

.field public static final enum IN_HOUSE:Lcom/facebook/common/build/SignatureType;

.field public static final enum PROD:Lcom/facebook/common/build/SignatureType;

.field public static final enum WORK:Lcom/facebook/common/build/SignatureType;

.field public static final enum WORKDEV:Lcom/facebook/common/build/SignatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    .line 50
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "IN_HOUSE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->IN_HOUSE:Lcom/facebook/common/build/SignatureType;

    .line 51
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    .line 52
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "WORKDEV"

    invoke-direct {v0, v1, v5}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->WORKDEV:Lcom/facebook/common/build/SignatureType;

    .line 53
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v6}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->WORK:Lcom/facebook/common/build/SignatureType;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/common/build/SignatureType;

    sget-object v1, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/common/build/SignatureType;->IN_HOUSE:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/common/build/SignatureType;->WORKDEV:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/common/build/SignatureType;->WORK:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/common/build/SignatureType;->$VALUES:[Lcom/facebook/common/build/SignatureType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/build/SignatureType;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/common/build/SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/build/SignatureType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/build/SignatureType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/common/build/SignatureType;->$VALUES:[Lcom/facebook/common/build/SignatureType;

    invoke-virtual {v0}, [Lcom/facebook/common/build/SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/build/SignatureType;

    return-object v0
.end method


# virtual methods
.method public final getPermission()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    const-string v0, "com.facebook.permission.%s.FB_APP_COMMUNICATION"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/common/build/SignatureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
