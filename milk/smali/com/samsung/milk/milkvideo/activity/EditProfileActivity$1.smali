.class Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->finish()V

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x7f04000b

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method
