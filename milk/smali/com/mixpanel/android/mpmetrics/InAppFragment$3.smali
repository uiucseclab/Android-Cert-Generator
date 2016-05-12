.class Lcom/mixpanel/android/mpmetrics/InAppFragment$3;
.super Ljava/lang/Object;
.source "InAppFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/InAppFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 95
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    # invokes: Lcom/mixpanel/android/mpmetrics/InAppFragment;->remove()V
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$000(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    # getter for: Lcom/mixpanel/android/mpmetrics/InAppFragment;->mDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$200(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->getInAppNotification()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v1

    .line 117
    .local v1, "inApp":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getCallToActionUrl()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "uriString":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 126
    :goto_0
    sget-boolean v5, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "InAppFragment"

    const-string v6, "Can\'t parse notification URI, will not take any action"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v4, "viewIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    # getter for: Lcom/mixpanel/android/mpmetrics/InAppFragment;->mParent:Landroid/app/Activity;
    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$400(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "viewIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$3;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    # invokes: Lcom/mixpanel/android/mpmetrics/InAppFragment;->remove()V
    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$000(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    .line 136
    const/4 v5, 0x1

    return v5

    .line 130
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "InAppFragment"

    const-string v6, "User doesn\'t have an activity for notification URI"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
