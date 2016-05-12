.class public Lcom/samsung/milk/milkvideo/views/MessageNotifier;
.super Ljava/lang/Object;
.source "MessageNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;
    }
.end annotation


# static fields
.field private static final SUCCESS_TIMEOUT:I = 0xbb8


# instance fields
.field private handler:Landroid/os/Handler;

.field private shouldShowNextNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->shouldShowNextNotification:Z

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public hideNotification(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "messageRoot":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    const v1, 0x7f040001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showNextNotification(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->shouldShowNextNotification:Z

    .line 95
    return-void
.end method

.method public showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # I
    .param p3, "handleDismiss"    # Z
    .param p4, "type"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    .prologue
    const v6, 0x7f0600dd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->UNAUTHORIZED:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    if-ne p4, v3, :cond_0

    .line 30
    invoke-static {p1, v7}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 80
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->shouldShowNextNotification:Z

    if-nez v3, :cond_1

    .line 35
    iput-boolean v8, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->shouldShowNextNotification:Z

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 40
    .local v2, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, "messageNotifier":Landroid/widget/TextView;
    if-nez v1, :cond_4

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030048

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "messageLayout":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "messageNotifier":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 46
    .restart local v1    # "messageNotifier":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    :goto_1
    if-eqz v0, :cond_2

    .line 52
    const/high16 v3, 0x7f040000

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 53
    if-eqz p3, :cond_2

    .line 54
    new-instance v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier$1;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    :cond_2
    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    if-eq p4, v3, :cond_3

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->TIMEOUT_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    if-ne p4, v3, :cond_5

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :goto_2
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    .line 79
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 49
    .end local v0    # "messageLayout":Landroid/view/View;
    :cond_4
    const v3, 0x7f0600dc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "messageLayout":Landroid/view/View;
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/milk/milkvideo/views/MessageNotifier$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier$2;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier;Landroid/app/Activity;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public willShowNextNotification()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->shouldShowNextNotification:Z

    return v0
.end method
