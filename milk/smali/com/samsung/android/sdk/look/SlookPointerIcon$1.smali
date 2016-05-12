.class Lcom/samsung/android/sdk/look/SlookPointerIcon$1;
.super Ljava/lang/Object;
.source "SlookPointerIcon.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/look/SlookPointerIcon;->setHoverIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/look/SlookPointerIcon;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    return v3

    .line 62
    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    # getter for: Lcom/samsung/android/sdk/look/SlookPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->access$000(Lcom/samsung/android/sdk/look/SlookPointerIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
