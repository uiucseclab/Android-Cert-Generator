.class public final enum Lcom/facebook/config/application/Product;
.super Ljava/lang/Enum;
.source "video_id"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/config/application/Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/config/application/Product;

.field public static final enum APPMANAGER:Lcom/facebook/config/application/Product;

.field public static final enum FACEBOOK_SERVICES:Lcom/facebook/config/application/Product;

.field public static final enum FB4A:Lcom/facebook/config/application/Product;

.field public static final enum GAMESPORTAL:Lcom/facebook/config/application/Product;

.field public static final enum GETAPPS:Lcom/facebook/config/application/Product;

.field public static final enum GIFTS:Lcom/facebook/config/application/Product;

.field public static final enum GROUPS:Lcom/facebook/config/application/Product;

.field public static final enum HOME:Lcom/facebook/config/application/Product;

.field public static final enum ME:Lcom/facebook/config/application/Product;

.field public static final enum MESSENGER:Lcom/facebook/config/application/Product;

.field public static final enum MOMENTS:Lcom/facebook/config/application/Product;

.field public static final enum NATIVEMSITE:Lcom/facebook/config/application/Product;

.field public static final enum PAA:Lcom/facebook/config/application/Product;

.field public static final enum PETOPE:Lcom/facebook/config/application/Product;

.field public static final enum PHONE:Lcom/facebook/config/application/Product;

.field public static final enum SAMPLE:Lcom/facebook/config/application/Product;

.field public static final enum UNKNOWN:Lcom/facebook/config/application/Product;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "MESSENGER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    .line 10
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "FB4A"

    invoke-direct {v0, v1, v4}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    .line 11
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "PAA"

    invoke-direct {v0, v1, v5}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->PAA:Lcom/facebook/config/application/Product;

    .line 12
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "SAMPLE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->SAMPLE:Lcom/facebook/config/application/Product;

    .line 13
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "GIFTS"

    invoke-direct {v0, v1, v7}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->GIFTS:Lcom/facebook/config/application/Product;

    .line 14
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "NATIVEMSITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->NATIVEMSITE:Lcom/facebook/config/application/Product;

    .line 15
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "HOME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->HOME:Lcom/facebook/config/application/Product;

    .line 16
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "GAMESPORTAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->GAMESPORTAL:Lcom/facebook/config/application/Product;

    .line 17
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "PHONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->PHONE:Lcom/facebook/config/application/Product;

    .line 18
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "PETOPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->PETOPE:Lcom/facebook/config/application/Product;

    .line 19
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "GROUPS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->GROUPS:Lcom/facebook/config/application/Product;

    .line 20
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "ME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->ME:Lcom/facebook/config/application/Product;

    .line 21
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "MOMENTS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->MOMENTS:Lcom/facebook/config/application/Product;

    .line 22
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "APPMANAGER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->APPMANAGER:Lcom/facebook/config/application/Product;

    .line 23
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "FACEBOOK_SERVICES"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->FACEBOOK_SERVICES:Lcom/facebook/config/application/Product;

    .line 24
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "GETAPPS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->GETAPPS:Lcom/facebook/config/application/Product;

    .line 25
    new-instance v0, Lcom/facebook/config/application/Product;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/config/application/Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/config/application/Product;->UNKNOWN:Lcom/facebook/config/application/Product;

    .line 8
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/facebook/config/application/Product;

    sget-object v1, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/config/application/Product;->PAA:Lcom/facebook/config/application/Product;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/config/application/Product;->SAMPLE:Lcom/facebook/config/application/Product;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/config/application/Product;->GIFTS:Lcom/facebook/config/application/Product;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/config/application/Product;->NATIVEMSITE:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/config/application/Product;->HOME:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/config/application/Product;->GAMESPORTAL:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/config/application/Product;->PHONE:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/config/application/Product;->PETOPE:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/config/application/Product;->GROUPS:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/config/application/Product;->ME:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/config/application/Product;->MOMENTS:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/config/application/Product;->APPMANAGER:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/config/application/Product;->FACEBOOK_SERVICES:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/config/application/Product;->GETAPPS:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/config/application/Product;->UNKNOWN:Lcom/facebook/config/application/Product;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/config/application/Product;->$VALUES:[Lcom/facebook/config/application/Product;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/config/application/Product;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/facebook/config/application/Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/config/application/Product;

    return-object v0
.end method

.method public static values()[Lcom/facebook/config/application/Product;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/config/application/Product;->$VALUES:[Lcom/facebook/config/application/Product;

    invoke-virtual {v0}, [Lcom/facebook/config/application/Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/config/application/Product;

    return-object v0
.end method
