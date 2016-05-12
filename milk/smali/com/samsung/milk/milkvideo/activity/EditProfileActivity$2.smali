.class Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$2;
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
    .line 48
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$2;->this$0:Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    return-void
.end method
