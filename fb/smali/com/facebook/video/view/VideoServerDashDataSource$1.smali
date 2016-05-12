.class Lcom/facebook/video/view/VideoServerDashDataSource$1;
.super Ljava/lang/Object;
.source "onInit"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/common/eventbus/TypedEvent;

.field final synthetic b:Lcom/facebook/video/view/VideoServerDashDataSource;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/VideoServerDashDataSource;Lcom/facebook/common/eventbus/TypedEvent;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/video/view/VideoServerDashDataSource$1;->b:Lcom/facebook/video/view/VideoServerDashDataSource;

    iput-object p2, p0, Lcom/facebook/video/view/VideoServerDashDataSource$1;->a:Lcom/facebook/common/eventbus/TypedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource$1;->b:Lcom/facebook/video/view/VideoServerDashDataSource;

    iget-object v0, v0, Lcom/facebook/video/view/VideoServerDashDataSource;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    iget-object v1, p0, Lcom/facebook/video/view/VideoServerDashDataSource$1;->a:Lcom/facebook/common/eventbus/TypedEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 127
    return-void
.end method
