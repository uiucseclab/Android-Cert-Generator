.class public Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;
.super Ljava/lang/Object;
.source "success"


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/facebook/rti/push/client/FbnsSharedInitializer;I)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->b:I

    .line 164
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v1, v1, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 169
    iget v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->b:I

    .line 170
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v1, v1, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_qe_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_status"

    const-string v3, "NOT_ELIGIBLE: device ids don\'t match"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    .line 192
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 179
    const-string v0, "TEST"

    .line 185
    :goto_1
    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    iget-object v2, v2, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shared_qe_config"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shared_status"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b(I)V

    move v0, v1

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 181
    const-string v0, "CONTROL"

    goto :goto_1

    .line 183
    :cond_3
    const-string v0, "NOT_IN_EXPERIMENT"

    goto :goto_1
.end method
