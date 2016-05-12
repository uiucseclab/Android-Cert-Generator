.class public Lcom/squareup/picasso/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static nextId:I


# instance fields
.field private final data:Lcom/squareup/picasso/Request$Builder;

.field private deferred:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:I

.field private noFade:Z

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResId:I

.field private setPlaceholder:Z

.field private skipMemoryCache:Z

.field private tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/squareup/picasso/RequestCreator;->nextId:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    .line 98
    iput-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 99
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resourceId"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    .line 89
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 94
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    invoke-direct {v0, p2, p3}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    .line 95
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/picasso/RequestCreator;->getRequestId()I

    move-result v0

    return v0
.end method

.method private createRequest(J)Lcom/squareup/picasso/Request;
    .locals 9
    .param p1, "started"    # J

    .prologue
    .line 619
    invoke-static {}, Lcom/squareup/picasso/RequestCreator;->getRequestId()I

    move-result v0

    .line 621
    .local v0, "id":I
    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v2

    .line 622
    .local v2, "request":Lcom/squareup/picasso/Request;
    iput v0, v2, Lcom/squareup/picasso/Request;->id:I

    .line 623
    iput-wide p1, v2, Lcom/squareup/picasso/Request;->started:J

    .line 625
    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v4, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 626
    .local v1, "loggingEnabled":Z
    if-eqz v1, :cond_0

    .line 627
    const-string v4, "Main"

    const-string v5, "created"

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v2}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v3

    .line 631
    .local v3, "transformed":Lcom/squareup/picasso/Request;
    if-eq v3, v2, :cond_1

    .line 633
    iput v0, v3, Lcom/squareup/picasso/Request;->id:I

    .line 634
    iput-wide p1, v3, Lcom/squareup/picasso/Request;->started:J

    .line 636
    if-eqz v1, :cond_1

    .line 637
    const-string v4, "Main"

    const-string v5, "changed"

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    return-object v3
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static getRequestId()I
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lcom/squareup/picasso/Utils;->isMain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget v3, Lcom/squareup/picasso/RequestCreator;->nextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/squareup/picasso/RequestCreator;->nextId:I

    .line 72
    .local v1, "id":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return v3

    .line 59
    .end local v1    # "id":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 60
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 61
    .restart local v1    # "id":Ljava/util/concurrent/atomic/AtomicInteger;
    sget-object v3, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v4, Lcom/squareup/picasso/RequestCreator$1;

    invoke-direct {v4, v1, v2}, Lcom/squareup/picasso/RequestCreator$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private performRemoteViewInto(Lcom/squareup/picasso/RemoteViewsAction;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/RemoteViewsAction;

    .prologue
    .line 645
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/squareup/picasso/RemoteViewsAction;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 648
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RemoteViewsAction;->complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 658
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 653
    :cond_0
    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v1, :cond_1

    .line 654
    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    invoke-virtual {p1, v1}, Lcom/squareup/picasso/RemoteViewsAction;->setImageResource(I)V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    goto :goto_0
.end method


# virtual methods
.method public centerCrop()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerCrop()Lcom/squareup/picasso/Request$Builder;

    .line 249
    return-object p0
.end method

.method public centerInside()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerInside()Lcom/squareup/picasso/Request$Builder;

    .line 258
    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Request$Builder;

    .line 281
    return-object p0
.end method

.method public error(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "errorResId"    # I

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    .line 167
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    return-object p0
.end method

.method public fetch()V
    .locals 8

    .prologue
    .line 363
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 365
    .local v6, "started":J
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with fetch."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->hasPriority()Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Request$Builder;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/Request$Builder;

    .line 374
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v2

    .line 375
    .local v2, "request":Lcom/squareup/picasso/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/FetchAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget-object v5, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/FetchAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 378
    .local v0, "action":Lcom/squareup/picasso/Action;
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->submit(Lcom/squareup/picasso/Action;)V

    .line 380
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    .end local v2    # "request":Lcom/squareup/picasso/Request;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public fit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    .line 219
    return-object p0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 340
    .local v6, "started":J
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkNotMain()V

    .line 342
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with get."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    const/4 v1, 0x0

    .line 353
    :goto_0
    return-object v1

    .line 349
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v2

    .line 350
    .local v2, "finalData":Lcom/squareup/picasso/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/GetAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget-object v5, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/GetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 353
    .local v0, "action":Lcom/squareup/picasso/Action;
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget-object v5, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v5, v5, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    iget-object v8, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v8, v8, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-static {v1, v3, v5, v8, v0}, Lcom/squareup/picasso/BitmapHunter;->forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 537
    return-void
.end method

.method public into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 21
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "callback"    # Lcom/squareup/picasso/Callback;

    .prologue
    .line 549
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 550
    .local v18, "started":J
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Target must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 558
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-eqz v3, :cond_1

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v3, :cond_7

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request$Builder;->hasSize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Fit cannot be used with resize."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    .line 569
    .local v20, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v17

    .line 570
    .local v17, "height":I
    if-eqz v20, :cond_4

    if-nez v17, :cond_6

    .line 571
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-eqz v3, :cond_5

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    new-instance v4, Lcom/squareup/picasso/DeferredRequestCreator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/squareup/picasso/DeferredRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/squareup/picasso/Picasso;->defer(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V

    goto :goto_0

    .line 577
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    .line 580
    .end local v17    # "height":I
    .end local v20    # "width":I
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v9

    .line 581
    .local v9, "request":Lcom/squareup/picasso/Request;
    invoke-static {v9}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v14

    .line 583
    .local v14, "requestKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v3, :cond_9

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v14}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 585
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_9

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v4, v3, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    sget-object v6, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v8, v3, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/squareup/picasso/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_8

    .line 589
    const-string v3, "Main"

    const-string v4, "completed"

    invoke-virtual {v9}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v7, v8}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_8
    if-eqz p2, :cond_1

    .line 592
    invoke-interface/range {p2 .. p2}, Lcom/squareup/picasso/Callback;->onSuccess()V

    goto/16 :goto_0

    .line 598
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-eqz v3, :cond_a

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 602
    :cond_a
    new-instance v6, Lcom/squareup/picasso/ImageViewAction;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    move-object/from16 v8, p1

    move-object/from16 v16, p2

    invoke-direct/range {v6 .. v16}, Lcom/squareup/picasso/ImageViewAction;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/Callback;)V

    .line 606
    .local v6, "action":Lcom/squareup/picasso/Action;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    goto/16 :goto_0
.end method

.method public into(Landroid/widget/RemoteViews;IILandroid/app/Notification;)V
    .locals 13
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "notificationId"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 471
    .local v11, "started":J
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "RemoteViews must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    if-nez p4, :cond_1

    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Notification must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v1, :cond_2

    .line 480
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with RemoteViews."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 483
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_4
    invoke-direct {p0, v11, v12}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v2

    .line 488
    .local v2, "request":Lcom/squareup/picasso/Request;
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v7, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget v8, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    iget-object v10, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;IILandroid/app/Notification;ZILjava/lang/String;Ljava/lang/Object;)V

    .line 494
    .local v0, "action":Lcom/squareup/picasso/RemoteViewsAction;
    invoke-direct {p0, v0}, Lcom/squareup/picasso/RequestCreator;->performRemoteViewInto(Lcom/squareup/picasso/RemoteViewsAction;)V

    .line 495
    return-void
.end method

.method public into(Landroid/widget/RemoteViews;I[I)V
    .locals 12
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 502
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 503
    .local v10, "started":J
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "remoteViews must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    if-nez p3, :cond_1

    .line 509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "appWidgetIds must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v1, :cond_2

    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 515
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_4
    invoke-direct {p0, v10, v11}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v2

    .line 520
    .local v2, "request":Lcom/squareup/picasso/Request;
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget v7, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    iget-object v9, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/RemoteViewsAction$AppWidgetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;I[IZILjava/lang/String;Ljava/lang/Object;)V

    .line 526
    .local v0, "action":Lcom/squareup/picasso/RemoteViewsAction;
    invoke-direct {p0, v0}, Lcom/squareup/picasso/RequestCreator;->performRemoteViewInto(Lcom/squareup/picasso/RemoteViewsAction;)V

    .line 527
    return-void
.end method

.method public into(Lcom/squareup/picasso/Target;)V
    .locals 12
    .param p1, "target"    # Lcom/squareup/picasso/Target;

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 429
    .local v10, "started":J
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    iget-boolean v2, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v2, :cond_1

    .line 435
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with a Target."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v2

    if-nez v2, :cond_3

    .line 439
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 440
    iget-boolean v2, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/squareup/picasso/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v1}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 462
    :goto_0
    return-void

    .line 444
    :cond_3
    invoke-direct {p0, v10, v11}, Lcom/squareup/picasso/RequestCreator;->createRequest(J)Lcom/squareup/picasso/Request;

    move-result-object v3

    .line 445
    .local v3, "request":Lcom/squareup/picasso/Request;
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "requestKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 449
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 450
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 451
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-interface {p1, v9, v1}, Lcom/squareup/picasso/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    goto :goto_0

    .line 456
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-boolean v2, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/squareup/picasso/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    invoke-interface {p1, v1}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 458
    new-instance v0, Lcom/squareup/picasso/TargetAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget v5, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    iget-object v6, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/TargetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Target;Lcom/squareup/picasso/Request;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    .local v0, "action":Lcom/squareup/picasso/Action;
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    goto :goto_0
.end method

.method public noFade()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    .line 329
    return-object p0
.end method

.method public noPlaceholder()Lcom/squareup/picasso/RequestCreator;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    .line 117
    return-object p0
.end method

.method public placeholder(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "placeholderResId"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    .line 136
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->setPlaceholder:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    return-object p0
.end method

.method public priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "priority"    # Lcom/squareup/picasso/Picasso$Priority;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/Request$Builder;

    .line 302
    return-object p0
.end method

.method public resize(II)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    .line 239
    return-object p0
.end method

.method public resizeDimen(II)Lcom/squareup/picasso/RequestCreator;
    .locals 4
    .param p1, "targetWidthResId"    # I
    .param p2, "targetHeightResId"    # I

    .prologue
    .line 230
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 232
    .local v2, "targetWidth":I
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 233
    .local v1, "targetHeight":I
    invoke-virtual {p0, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    return-object v3
.end method

.method public rotate(F)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->rotate(F)Lcom/squareup/picasso/Request$Builder;

    .line 264
    return-object p0
.end method

.method public rotate(FFF)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/picasso/Request$Builder;->rotate(FFF)Lcom/squareup/picasso/Request$Builder;

    .line 270
    return-object p0
.end method

.method public skipMemoryCache()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    .line 323
    return-object p0
.end method

.method public stableKey(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "stableKey"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->stableKey(Ljava/lang/String;)Lcom/squareup/picasso/Request$Builder;

    .line 290
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->tag:Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .param p1, "transformation"    # Lcom/squareup/picasso/Transformation;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;

    .line 313
    return-object p0
.end method

.method unfit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    .line 225
    return-object p0
.end method
