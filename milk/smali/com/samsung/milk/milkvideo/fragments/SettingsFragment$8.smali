.class Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;
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
    .line 146
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;->this$0:Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    const v4, 0x7f0800c8

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
