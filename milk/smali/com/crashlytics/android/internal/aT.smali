.class final Lcom/crashlytics/android/internal/aT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/crashlytics/android/internal/aS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/crashlytics/android/internal/aS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/aS;-><init>(B)V

    sput-object v0, Lcom/crashlytics/android/internal/aT;->a:Lcom/crashlytics/android/internal/aS;

    return-void
.end method

.method static synthetic a()Lcom/crashlytics/android/internal/aS;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/crashlytics/android/internal/aT;->a:Lcom/crashlytics/android/internal/aS;

    return-object v0
.end method
