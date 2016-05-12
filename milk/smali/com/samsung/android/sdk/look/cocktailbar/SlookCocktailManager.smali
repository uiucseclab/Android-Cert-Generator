.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# static fields
.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlookCocktailManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 93
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v4, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 68
    if-nez p0, :cond_0

    .line 69
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 71
    :cond_0
    :try_start_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Base context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 77
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .line 81
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    :cond_2
    if-nez v2, :cond_3

    .line 82
    new-instance v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyCocktailViewDataChanged(II)V

    .line 136
    :cond_0
    return-void
.end method

.method public updateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    const/4 v5, 0x0

    move v1, p1

    move v3, v2

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 122
    :cond_1
    return-void
.end method
