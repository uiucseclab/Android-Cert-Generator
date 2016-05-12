.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForGoogleStyleMode()V
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
    .line 1329
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.4;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1333
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.4;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    # getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$300(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    # getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I
    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$200(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->setHeight(I)V

    .line 1334
    return-void
.end method
