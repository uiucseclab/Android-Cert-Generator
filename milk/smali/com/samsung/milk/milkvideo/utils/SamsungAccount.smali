.class public Lcom/samsung/milk/milkvideo/utils/SamsungAccount;
.super Ljava/lang/Object;
.source "SamsungAccount.java"


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

.field private static final ACTION_REFRESH_ACCESS_TOKEN:Ljava/lang/String; = "com.msc.action.ACCESSTOKEN_V02_REQUEST"

.field private static final ACTION_REQUEST_ACCESS_TOKEN:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

.field private static final CLIENT_ID:Ljava/lang/String; = "qjn92f069j"

.field private static final CLIENT_SECRET:Ljava/lang/String; = "B98ED76D7B6DA5759718E257ADCA67B6"

.field public static final EXTRAS_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final EXTRAS_SAMSUNG_API_URL:Ljava/lang/String; = "api_server_url"

.field public static final STATUS_EXPIRED_TOKEN:I = 0x1006


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->accountManager:Landroid/accounts/AccountManager;

    .line 31
    return-void
.end method

.method private static addExtras(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const-string v0, "client_id"

    const-string v1, "qjn92f069j"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v0, "client_secret"

    const-string v1, "B98ED76D7B6DA5759718E257ADCA67B6"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v0, "OSP_VER"

    const-string v1, "OSP_02"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public static buildAddAccountIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->addExtras(Landroid/content/Intent;)V

    .line 63
    const-string v1, "account_mode"

    const-string v2, "AGREE_TO_DISCLAIMER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static buildAddAccountIntentSamsungInternalService()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->addExtras(Landroid/content/Intent;)V

    .line 72
    const-string v1, "mypackage"

    const-string v2, "com.samsung.milk.milkvideo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method public static buildGetAccessTokenIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 40
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "login_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "login_id_type"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "api_server_url"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "auth_server_url"

    aput-object v3, v0, v2

    .line 43
    .local v0, "additional":[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "bundle":Landroid/content/Intent;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->addExtras(Landroid/content/Intent;)V

    .line 45
    const-string v2, "additional"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v2, "progress_theme"

    const-string v3, "dark"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v1
.end method

.method public static buildRefreshAccessTokenIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.ACCESSTOKEN_V02_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->addExtras(Landroid/content/Intent;)V

    .line 53
    const-string v1, "mypackage"

    const-string v2, "com.samsung.milk.milkvideo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "MODE"

    const-string v2, "BACKGROUND"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "expired_access_token"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method


# virtual methods
.method public accountExists()Z
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 35
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
