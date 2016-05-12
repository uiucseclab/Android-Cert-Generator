.class public interface abstract Lcom/crashlytics/android/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/m;

.field public static final b:Lcom/crashlytics/android/internal/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/crashlytics/android/internal/n;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/n;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/m;->a:Lcom/crashlytics/android/internal/m;

    .line 44
    new-instance v0, Lcom/crashlytics/android/internal/o;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/o;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/m;->b:Lcom/crashlytics/android/internal/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/crashlytics/android/internal/b;)V
.end method
