.class abstract Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "mqtt_response_time"


# instance fields
.field protected final a:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
.end method

.method public abstract b()V
.end method
