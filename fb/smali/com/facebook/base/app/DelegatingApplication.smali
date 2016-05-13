.class public abstract Lcom/facebook/base/app/DelegatingApplication;
.super Landroid/app/Application;
.source "|NO"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/base/app/ApplicationLike;",
        ">",
        "Landroid/app/Application;"
    }
.end annotation


# static fields
.field private static a:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DelegatingApplication.class"
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/base/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 44
    invoke-static {}, Lcom/facebook/base/app/DelegatingApplication;->a()V

    .line 45
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/facebook/base/app/DelegatingApplication;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple instances of the Application object were created."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/facebook/base/app/DelegatingApplication;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit v1

    return-void
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->c()Lcom/facebook/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    .line 88
    .line 131
    const/16 v2, 0x0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    if-eqz v0, :cond_0

    .line 89
    or-int/lit8 p1, p1, 0x1

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/sosource/FbSoLoader;->a(Landroid/content/Context;I)V

    .line 92
    new-instance v0, Lcom/facebook/base/app/DelegatingApplication$SoLoaderShimHandler;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/facebook/base/app/DelegatingApplication$SoLoaderShimHandler;-><init>()V

    invoke-static {v0}, Lcom/facebook/common/soloader/SoLoaderShim;->a(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V

    .line 93
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->f()V

    .line 101
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->d()V

    .line 102
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->g()V

    .line 103
    return-void
.end method

.method public final b()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lcom/facebook/base/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected final e()Lcom/facebook/base/app/ApplicationLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->g()V

    .line 75
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/base/app/DelegatingApplication;->a(I)V

    .line 85
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    instance-of v0, v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    if-eqz v0, :cond_1

    .line 132
    instance-of v0, p0, Lcom/facebook/resources/HasBaseResourcesAccess;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " illegally implements HasOverridingResources without HasBaseResourcesAccess."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    check-cast v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    invoke-virtual {v0}, Lcom/facebook/base/app/AbstractApplicationLike;->x_()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 141
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const v0, 0x439d5d2c

    .line 40
    const/4 v2, 0x2

    sget-object v3, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v2, v3, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v2

    move v0, v2

    .line 107
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 108
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;->g()V

    .line 109
    iget-object v1, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-virtual {v1}, Lcom/facebook/base/app/ApplicationLike;->c()V

    .line 110
    const v1, -0x2caab9eb

    .line 48
    const/4 v2, 0x2

    sget-object v3, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 50
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 115
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-virtual {v0}, Lcom/facebook/base/app/ApplicationLike;->e()V

    .line 118
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 124
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/base/app/DelegatingApplication;->b:Lcom/facebook/base/app/ApplicationLike;

    invoke-virtual {v0, p1}, Lcom/facebook/base/app/ApplicationLike;->a(I)V

    .line 127
    :cond_0
    return-void
.end method
