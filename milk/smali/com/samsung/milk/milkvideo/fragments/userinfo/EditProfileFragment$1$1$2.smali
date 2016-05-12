.class Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$2;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;->failure(Lretrofit/RetrofitError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$2;->this$2:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$2;->this$2:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    const v3, 0x7f0800bd

    invoke-direct {v1, v2, v3}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
