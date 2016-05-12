.class public Lcom/mixpanel/android/mpmetrics/InAppFragment;
.super Landroid/app/Fragment;
.source "InAppFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/InAppFragment$SineBounceInterpolator;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "InAppFragment"

.field private static final MINI_REMOVE_TIME:I = 0x1770


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mDisplayMini:Ljava/lang/Runnable;

.field private mDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

.field private mDisplayStateId:I

.field private mHandler:Landroid/os/Handler;

.field private mInAppView:Landroid/view/View;

.field private mKill:Z

.field private mParent:Landroid/app/Activity;

.field private mRemover:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/InAppFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->remove()V

    return-void
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/InAppFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mInAppView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/InAppFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/InAppFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/InAppFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private remove()V
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 206
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 207
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    sget v3, Lcom/mixpanel/android/R$anim;->com_mixpanel_android_slide_down:I

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 209
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/mixpanel/android/mpmetrics/InAppFragment$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment$1;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mRemover:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayMini:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDetector:Landroid/view/GestureDetector;

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mKill:Z

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 152
    sget v3, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_activity_notification_mini:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mInAppView:Landroid/view/View;

    .line 153
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mInAppView:Landroid/view/View;

    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mInAppView:Landroid/view/View;

    sget v4, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "notifImage":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->getInAppNotification()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v0

    .line 158
    .local v0, "inApp":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mRemover:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1770

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mInAppView:Landroid/view/View;

    return-object v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayMini:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 170
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mKill:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 173
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mRemover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayMini:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mKill:Z

    .line 197
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayStateId:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    .line 198
    return-void
.end method

.method public setDisplayState(ILcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;)V
    .locals 0
    .param p1, "stateId"    # I
    .param p2, "displayState"    # Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    .prologue
    .line 42
    iput p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayStateId:I

    .line 43
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    .line 44
    return-void
.end method
