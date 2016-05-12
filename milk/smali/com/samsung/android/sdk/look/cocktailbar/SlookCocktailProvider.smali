.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SlookCocktailProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 61
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const-string v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 63
    .local v2, "cocktailIds":[I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    .line 79
    .end local v2    # "cocktailIds":[I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v5, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v5, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v5, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 71
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    const-string v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "cocktailId":I
    const-string v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, "visibility":I
    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 95
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 133
    return-void
.end method
