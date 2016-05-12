.class final Lcom/crashlytics/android/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/crashlytics/android/internal/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/crashlytics/android/internal/v;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/v;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/y;->a:Lcom/crashlytics/android/internal/v;

    return-void
.end method

.method static synthetic a()Lcom/crashlytics/android/internal/v;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/crashlytics/android/internal/y;->a:Lcom/crashlytics/android/internal/v;

    return-object v0
.end method
