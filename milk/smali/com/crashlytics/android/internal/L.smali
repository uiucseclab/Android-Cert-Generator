.class final Lcom/crashlytics/android/internal/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/crashlytics/android/internal/M;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/K;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lcom/crashlytics/android/internal/M;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/crashlytics/android/internal/M;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/crashlytics/android/internal/M;->b:J

    iget-wide v2, p2, Lcom/crashlytics/android/internal/M;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
