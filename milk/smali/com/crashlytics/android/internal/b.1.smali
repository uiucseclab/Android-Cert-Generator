.class public Lcom/crashlytics/android/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "default"


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/internal/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/crashlytics/android/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/crashlytics/android/internal/m;

.field private final f:Lcom/crashlytics/android/internal/i;

.field private final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/crashlytics/android/internal/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/b;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/internal/m;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/crashlytics/android/internal/i;->a:Lcom/crashlytics/android/internal/i;

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;Lcom/crashlytics/android/internal/i;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;Lcom/crashlytics/android/internal/i;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    new-instance v0, Lcom/crashlytics/android/internal/c;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/c;-><init>(Lcom/crashlytics/android/internal/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    .line 117
    new-instance v0, Lcom/crashlytics/android/internal/d;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/d;-><init>(Lcom/crashlytics/android/internal/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    .line 165
    iput-object p2, p0, Lcom/crashlytics/android/internal/b;->d:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/crashlytics/android/internal/m;->b:Lcom/crashlytics/android/internal/m;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/internal/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 349
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/e;

    .line 350
    if-eqz v0, :cond_2

    .line 351
    iget-object v1, v0, Lcom/crashlytics/android/internal/e;->b:Lcom/crashlytics/android/internal/g;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, v0, Lcom/crashlytics/android/internal/e;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/crashlytics/android/internal/e;->b:Lcom/crashlytics/android/internal/g;

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p2}, Lcom/crashlytics/android/internal/h;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    if-nez v0, :cond_0

    .line 249
    :goto_1
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Producer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V
    .locals 3

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not dispatch event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    .line 187
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 188
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 190
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/internal/h;

    .line 191
    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/internal/h;

    .line 193
    if-eqz v2, :cond_1

    .line 194
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Producer method for type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found on type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/crashlytics/android/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/crashlytics/android/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/b;->a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 208
    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 209
    if-nez v1, :cond_3

    .line 211
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 213
    if-nez v1, :cond_3

    move-object v1, v2

    .line 217
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 218
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 221
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 223
    iget-object v3, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/internal/h;

    .line 224
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/h;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 226
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    .line 227
    invoke-virtual {v1}, Lcom/crashlytics/android/internal/h;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 228
    invoke-virtual {v0}, Lcom/crashlytics/android/internal/g;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/b;->a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V

    goto :goto_2

    .line 236
    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 258
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    .line 260
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 263
    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/internal/h;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/h;

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/internal/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event producer for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/h;->b()V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 279
    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event handler for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    .line 286
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    invoke-virtual {v0}, Lcom/crashlytics/android/internal/g;->b()V

    goto :goto_2

    .line 290
    :cond_6
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 292
    :cond_7
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 309
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 310
    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 313
    const/4 v2, 0x1

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/crashlytics/android/internal/g;

    .line 315
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/crashlytics/android/internal/e;

    invoke-direct {v5, p1, v1}, Lcom/crashlytics/android/internal/e;-><init>(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    move v1, v0

    .line 318
    goto :goto_1

    .line 320
    :cond_4
    if-nez v1, :cond_5

    instance-of v0, p1, Lcom/crashlytics/android/internal/f;

    if-nez v0, :cond_5

    .line 321
    new-instance v0, Lcom/crashlytics/android/internal/f;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/internal/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/b;->c(Ljava/lang/Object;)V

    .line 324
    :cond_5
    invoke-direct {p0}, Lcom/crashlytics/android/internal/b;->a()V

    .line 325
    return-void

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Bus \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
