.class public abstract Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseNachosFragment.java"


# static fields
.field public static final STATUS_BAR_RETRACT_DELAY:I = 0xfa0

.field public static final SYSTEM_UI_VISIBILITY:I = 0x504


# instance fields
.field protected eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field isPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 75
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static setupSystemVisibilityChangeListener(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public isFragmentPaused()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->isPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->setupSystemVisibilityChangeListener(Landroid/support/v4/app/FragmentActivity;)V

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->isPaused:Z

    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->isPaused:Z

    .line 62
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
