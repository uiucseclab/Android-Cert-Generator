.class public Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;
.super Ljava/lang/Object;
.source "{density="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 135
    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/facebook/content/DefaultSecureContextHelper;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/content/DefaultSecureContextHelper;

    move-result-object v0

    check-cast v0, Lcom/facebook/content/DefaultSecureContextHelper;

    .line 138
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.katana.LogoutActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1, p0}, Lcom/facebook/content/DefaultSecureContextHelper;->a(Landroid/content/Intent;Landroid/content/Context;)V

    .line 147
    return-void
.end method
