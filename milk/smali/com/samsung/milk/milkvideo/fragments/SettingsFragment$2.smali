.class Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->setUpListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->start(Landroid/content/Context;)V

    .line 102
    return-void
.end method
