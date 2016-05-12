.class public Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
.super Ljava/lang/Object;
.source "shutdown_video_server"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->a:Ljava/util/concurrent/Executor;

    .line 46
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->c:I

    .line 47
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->d:I

    .line 48
    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->e:I

    .line 49
    return-void
.end method

.method public static a()Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    .line 23
    sget-object v2, Lcom/facebook/rti/common/concurrent/IgExecutor;->c:Ljava/util/concurrent/Executor;

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->b:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public final b()Lcom/facebook/rti/common/concurrent/SerialExecutor;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/rti/common/concurrent/SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;-><init>(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)V

    return-object v0
.end method
