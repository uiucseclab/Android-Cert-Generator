.class public Lcom/facebook/browser/lite/BrowserLiteCallbacker;
.super Ljava/lang/Object;
.source "qt  "


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# instance fields
.field private c:Landroid/content/ServiceConnection;

.field public d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/browser/lite/BrowserLiteCallbacker;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-direct {v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;-><init>()V

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    .line 40
    :cond_0
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;)Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    return-object p1
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$10;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$10;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;I)V

    const v2, 0x2d3f04a2

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.BrowserLiteCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 57
    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e:Landroid/os/HandlerThread;

    .line 58
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    .line 60
    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;

    invoke-direct {v2, p0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;)V

    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    .line 71
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 72
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 73
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    const/16 v1, 0x9

    const v3, 0x1e146148

    invoke-static {p1, v2, v0, v1, v3}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$3;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;)V

    const v2, 0xd393f72

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JJJJJ)V
    .locals 14

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;JJJJJ)V

    const v2, -0x4d640787

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x31f329b4

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v0, p1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a([J)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$9;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$9;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;[J)V

    const v2, 0x52efcf05

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Landroid/content/Context;)V

    const v2, 0x5f75f489

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 97
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$6;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$6;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;)V

    const v2, -0x5b824ebc

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v0, p1, p2}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/util/Map;)V

    const v2, 0x3df53b2d

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;)V

    const v2, 0x5012599a

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d(Landroid/content/Context;)V

    .line 285
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Landroid/content/Context;)V

    const v2, -0x77e62887

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker$7;

    invoke-direct {v1, p0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker$7;-><init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;)V

    const v2, -0x52841905

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v1, p1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    const v1, 0x3bc5082e

    invoke-static {p1, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 105
    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c:Landroid/content/ServiceConnection;

    .line 106
    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    .line 107
    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e:Landroid/os/HandlerThread;

    .line 108
    iput-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->f:Landroid/os/Handler;

    .line 110
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 358
    const/16 v0, 0x12c

    .line 360
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 361
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v1, p1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 316
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
