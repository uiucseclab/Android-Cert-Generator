.class public Lcom/facebook/loom/logger/LogEntry;
.super Ljava/lang/Object;
.source "used Java heap"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private mCallID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mEntryID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mEntryType:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLongExtra:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMatchID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mThreadID:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mTime:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public constructor <init>(ILcom/facebook/loom/logger/LogEntry$EntryType;JIII)V
    .locals 11
    .param p2    # Lcom/facebook/loom/logger/LogEntry$EntryType;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/loom/logger/LogEntry;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;JIIIJ)Lcom/facebook/loom/logger/LogEntry;

    .line 187
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/facebook/loom/logger/LogEntry;->mEntryID:I

    return v0
.end method

.method final a(ILcom/facebook/loom/logger/LogEntry$EntryType;JIIIJ)Lcom/facebook/loom/logger/LogEntry;
    .locals 1
    .param p2    # Lcom/facebook/loom/logger/LogEntry$EntryType;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    iput p1, p0, Lcom/facebook/loom/logger/LogEntry;->mEntryID:I

    .line 198
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/facebook/loom/logger/LogEntry;->mEntryType:I

    .line 199
    iput-wide p3, p0, Lcom/facebook/loom/logger/LogEntry;->mTime:J

    .line 200
    iput p5, p0, Lcom/facebook/loom/logger/LogEntry;->mThreadID:I

    .line 201
    iput p6, p0, Lcom/facebook/loom/logger/LogEntry;->mCallID:I

    .line 202
    iput p7, p0, Lcom/facebook/loom/logger/LogEntry;->mMatchID:I

    .line 203
    iput-wide p8, p0, Lcom/facebook/loom/logger/LogEntry;->mLongExtra:J

    .line 205
    return-object p0

    .line 198
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/loom/logger/LogEntry$EntryType;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/loom/logger/LogEntry;->mEntryType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/facebook/loom/logger/LogEntry;->mTime:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/facebook/loom/logger/LogEntry;->mThreadID:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/facebook/loom/logger/LogEntry;->mCallID:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/facebook/loom/logger/LogEntry;->mMatchID:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/facebook/loom/logger/LogEntry;->mLongExtra:J

    return-wide v0
.end method
