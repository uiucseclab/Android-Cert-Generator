.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidationPerformedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationPerformed()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hasValidationError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hasValidationError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->hideNotification(Landroid/app/Activity;)V

    .line 346
    :cond_0
    return-void
.end method
