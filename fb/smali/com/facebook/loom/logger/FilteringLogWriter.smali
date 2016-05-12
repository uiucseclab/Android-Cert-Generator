.class public Lcom/facebook/loom/logger/FilteringLogWriter;
.super Lcom/facebook/loom/logger/LogWriter;
.source "unable to write screenshot to %s"


# static fields
.field private static final a:[Lcom/facebook/loom/logger/LogEntry$EntryType;


# instance fields
.field private final b:Lcom/facebook/loom/logger/LogWriter;

.field private final c:Lcom/facebook/loom/logger/AsyncColors;

.field private final d:Landroid/util/SparseIntArray;

.field private e:I

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/loom/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    .line 32
    sput-object v0, Lcom/facebook/loom/logger/FilteringLogWriter;->a:[Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/facebook/loom/logger/LogWriter;Lcom/facebook/loom/logger/AsyncColors;Ljava/util/EnumSet;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/loom/logger/LogWriter;",
            "Lcom/facebook/loom/logger/AsyncColors;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/loom/logger/LogWriter;-><init>()V

    .line 38
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->e:I

    .line 53
    iput-object p1, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->b:Lcom/facebook/loom/logger/LogWriter;

    .line 54
    iput-object p2, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->c:Lcom/facebook/loom/logger/AsyncColors;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->d:Landroid/util/SparseIntArray;

    .line 57
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->c:Lcom/facebook/loom/logger/AsyncColors;

    invoke-virtual {v0, p0}, Lcom/facebook/loom/logger/AsyncColors;->a(Lcom/facebook/loom/logger/FilteringLogWriter;)V

    .line 59
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->f:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/facebook/loom/logger/LogWriter;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/loom/logger/LogWriter;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/loom/logger/AsyncColors;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/facebook/loom/logger/AsyncColors;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/loom/logger/FilteringLogWriter;-><init>(Lcom/facebook/loom/logger/LogWriter;Lcom/facebook/loom/logger/AsyncColors;Ljava/util/EnumSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/loom/logger/LogEntry;)J
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 64
    iget-boolean v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->f:Z

    if-eqz v0, :cond_3

    .line 65
    iput v2, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->e:I

    .line 66
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->c:Lcom/facebook/loom/logger/AsyncColors;

    invoke-virtual {v0, p1}, Lcom/facebook/loom/logger/AsyncColors;->a(Lcom/facebook/loom/logger/LogEntry;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 71
    :goto_0
    iget v1, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->e:I

    if-eq v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->d:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 75
    :cond_0
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->b:Lcom/facebook/loom/logger/LogWriter;

    invoke-virtual {v0, p1}, Lcom/facebook/loom/logger/LogWriter;->a(Lcom/facebook/loom/logger/LogEntry;)J

    move-result-wide v0

    .line 81
    :goto_1
    return-wide v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->b:Lcom/facebook/loom/logger/LogWriter;

    invoke-virtual {v0, p1}, Lcom/facebook/loom/logger/LogWriter;->a(Lcom/facebook/loom/logger/LogEntry;)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->e:I

    .line 101
    return-void
.end method

.method public final a(Lcom/facebook/loom/logger/LogEntry$EntryType;I)V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/facebook/loom/logger/FilteringLogWriter;->a:[Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry$EntryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->b:Lcom/facebook/loom/logger/LogWriter;

    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/loom/logger/FilteringLogWriter;->c:Lcom/facebook/loom/logger/AsyncColors;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/loom/logger/AsyncColors;->a(Lcom/facebook/loom/logger/FilteringLogWriter;)V

    .line 89
    return-void
.end method
