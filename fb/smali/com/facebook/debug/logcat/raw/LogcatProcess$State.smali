.class final enum Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
.super Ljava/lang/Enum;
.source "pkg_name"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/debug/logcat/raw/LogcatProcess$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

.field public static final enum BORN:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

.field public static final enum KILLED:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

.field public static final enum RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    const-string v1, "BORN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->BORN:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 32
    new-instance v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 33
    new-instance v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    const-string v1, "KILLED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->KILLED:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->BORN:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->RUNNING:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->KILLED:Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->$VALUES:[Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/debug/logcat/raw/LogcatProcess$State;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->$VALUES:[Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    invoke-virtual {v0}, [Lcom/facebook/debug/logcat/raw/LogcatProcess$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/debug/logcat/raw/LogcatProcess$State;

    return-object v0
.end method
