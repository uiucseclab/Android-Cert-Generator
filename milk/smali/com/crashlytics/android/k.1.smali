.class final Lcom/crashlytics/android/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/aG;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/PinningInfoProvider;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/PinningInfoProvider;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/crashlytics/android/k;->a:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/crashlytics/android/k;->a:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getPins()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
