.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;
.super Landroid/view/ViewGroup;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->initTopViewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1664
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.7;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1668
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.7;"
    return-void
.end method
