.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 1085
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.3;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1088
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.3;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->requestLayout()V

    .line 1089
    return-void
.end method
