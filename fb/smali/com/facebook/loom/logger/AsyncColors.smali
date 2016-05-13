.class public Lcom/facebook/loom/logger/AsyncColors;
.super Ljava/lang/Object;
.source "page_video_list_story"


# static fields
.field static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Landroid/util/SparseIntArray;

.field private c:Landroid/util/SparseIntArray;

.field private d:Landroid/util/SparseIntArray;

.field private e:Lcom/facebook/loom/logger/FilteringLogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/loom/logger/AsyncColors;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->c:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    .line 57
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 116
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 117
    if-lez v0, :cond_0

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    :cond_0
    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->e:Lcom/facebook/loom/logger/FilteringLogWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->e:Lcom/facebook/loom/logger/FilteringLogWriter;

    invoke-virtual {v1, v0}, Lcom/facebook/loom/logger/FilteringLogWriter;->a(I)V

    .line 135
    :cond_1
    return-void
.end method

.method private a(ILcom/facebook/loom/logger/LogEntry$EntryType;)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 103
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 104
    sget-object v0, Lcom/facebook/loom/logger/AsyncColors;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->e:Lcom/facebook/loom/logger/FilteringLogWriter;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->e:Lcom/facebook/loom/logger/FilteringLogWriter;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/loom/logger/FilteringLogWriter;->a(Lcom/facebook/loom/logger/LogEntry$EntryType;I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/loom/logger/LogEntry;)I
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    .line 60
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->d()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->b()Lcom/facebook/loom/logger/LogEntry$EntryType;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v3

    .line 63
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->f()I

    move-result v0

    .line 65
    iget-object v4, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 66
    if-ltz v4, :cond_0

    .line 68
    iget-object v5, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v4, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 73
    :cond_0
    invoke-static {v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->isBlockStart(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-direct {p0, v1, v2}, Lcom/facebook/loom/logger/AsyncColors;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 86
    :goto_0
    invoke-static {v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->isAsyncCall(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/facebook/loom/logger/AsyncColors;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    :cond_1
    return v0

    .line 76
    :cond_2
    invoke-static {v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->isBlockEnd(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 78
    invoke-direct {p0, v1}, Lcom/facebook/loom/logger/AsyncColors;->a(I)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/facebook/loom/logger/AsyncColors;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/loom/logger/AsyncColors;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 82
    invoke-direct {p0, v1}, Lcom/facebook/loom/logger/AsyncColors;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/loom/logger/FilteringLogWriter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/loom/logger/AsyncColors;->e:Lcom/facebook/loom/logger/FilteringLogWriter;

    .line 95
    return-void
.end method
