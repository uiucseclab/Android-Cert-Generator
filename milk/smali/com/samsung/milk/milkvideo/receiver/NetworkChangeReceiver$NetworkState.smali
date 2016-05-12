.class final enum Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;
.super Ljava/lang/Enum;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

.field public static final enum OFFLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

.field public static final enum ONLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

.field public static final enum UNKNOWN:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->UNKNOWN:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    .line 18
    new-instance v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->ONLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    .line 19
    new-instance v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->OFFLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    sget-object v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->UNKNOWN:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->ONLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->OFFLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->$VALUES:[Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->$VALUES:[Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    return-object v0
.end method
