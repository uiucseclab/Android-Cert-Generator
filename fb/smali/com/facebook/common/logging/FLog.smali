.class public Lcom/facebook/common/logging/FLog;
.super Ljava/lang/Object;
.source "updateTokenCache %s %s"


# static fields
.field public static a:Lcom/facebook/common/logging/LoggingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    .line 28
    sget-object v1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a:Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    move-object v0, v1

    sput-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/common/logging/LoggingDelegate;)V
    .locals 1

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :cond_0
    sput-object p0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    sget-object v1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .line 382
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/facebook/common/logging/LoggingDelegate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p0}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/logging/LoggingDelegate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 457
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/logging/LoggingDelegate;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method
