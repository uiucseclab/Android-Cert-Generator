.class public Lcom/samsung/milk/milkvideo/utils/GoogleAccount;
.super Ljava/lang/Object;
.source "GoogleAccount.java"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;->accountManager:Landroid/accounts/AccountManager;

    .line 16
    return-void
.end method


# virtual methods
.method public getGoogleAccountName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 19
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;->accountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 20
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 21
    aget-object v1, v0, v4

    .line 22
    .local v1, "firstAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 27
    .end local v1    # "firstAccount":Landroid/accounts/Account;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
