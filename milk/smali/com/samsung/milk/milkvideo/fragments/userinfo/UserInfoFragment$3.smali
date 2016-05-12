.class Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->showPhotoOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 255
    packed-switch p2, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->launchGalleryIntent()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->launchCameraIntent()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->setProfilePhoto(Landroid/net/Uri;)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
