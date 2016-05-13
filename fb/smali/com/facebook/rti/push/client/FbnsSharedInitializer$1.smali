.class public Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;
.super Ljava/lang/Object;
.source "success"


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/FbnsSharedInitializer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 92
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v0, v0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cached_qe_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 95
    if-ne p1, v3, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v0, v0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_config"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_status"

    const-string v2, "NOT_IN_EXPERIMENT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0, v3}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b(I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget v1, v1, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v0, v0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->c:Lcom/facebook/rti/push/client/SharedConfigProvider;

    new-instance v1, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-direct {v1, v2, p1}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;-><init>(Lcom/facebook/rti/push/client/FbnsSharedInitializer;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/SharedConfigProvider;->a(Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V

    goto :goto_0
.end method
