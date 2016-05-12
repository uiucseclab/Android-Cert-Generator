.class public Lcom/facebook/video/view/UiThreadTypedEventBus;
.super Lcom/facebook/common/eventbus/TypedEventBus;
.source "onLoadEventEnd %d"


# instance fields
.field private final a:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/common/executors/DefaultAndroidThreadUtil;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEventBus;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/video/view/UiThreadTypedEventBus;->a:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HandlerType::",
            "Lcom/facebook/common/eventbus/TypedHandler;",
            ">(",
            "Lcom/facebook/common/eventbus/TypedEvent",
            "<THandlerType;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/video/view/UiThreadTypedEventBus;->a:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    invoke-virtual {v0}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->a()V

    .line 32
    invoke-super {p0, p1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 33
    return-void
.end method
