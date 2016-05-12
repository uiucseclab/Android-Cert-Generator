.class public interface abstract Lcom/crashlytics/android/internal/aB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/aB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/crashlytics/android/internal/aC;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/aC;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/aB;->a:Lcom/crashlytics/android/internal/aB;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
