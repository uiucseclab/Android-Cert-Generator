.class Lcom/facebook/video/view/exo/VideoServerDataSource$1;
.super Ljava/lang/Object;
.source "text/html"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/common/eventbus/TypedEvent;

.field final synthetic b:Lcom/facebook/video/view/exo/VideoServerDataSource;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/exo/VideoServerDataSource;Lcom/facebook/common/eventbus/TypedEvent;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource$1;->b:Lcom/facebook/video/view/exo/VideoServerDataSource;

    iput-object p2, p0, Lcom/facebook/video/view/exo/VideoServerDataSource$1;->a:Lcom/facebook/common/eventbus/TypedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource$1;->b:Lcom/facebook/video/view/exo/VideoServerDataSource;

    iget-object v0, v0, Lcom/facebook/video/view/exo/VideoServerDataSource;->i:Lcom/facebook/common/eventbus/TypedEventBus;

    iget-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource$1;->a:Lcom/facebook/common/eventbus/TypedEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 124
    return-void
.end method
