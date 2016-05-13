.class public Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;
.super Landroid/widget/ProgressBar;
.source "packageName is empty"


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->a:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->a:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->a:Ljava/lang/Runnable;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 51
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/nodex/startup/splashscreen/FrameRateProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method
