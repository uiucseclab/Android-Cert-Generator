.class Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;
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
    .line 113
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z
    invoke-static {v1, v0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->access$202(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;Z)Z

    .line 117
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->applySettingsToUI()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
