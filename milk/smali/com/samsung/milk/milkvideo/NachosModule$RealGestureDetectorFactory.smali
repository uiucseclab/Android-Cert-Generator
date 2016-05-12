.class public Lcom/samsung/milk/milkvideo/NachosModule$RealGestureDetectorFactory;
.super Ljava/lang/Object;
.source "NachosModule.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/NachosModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealGestureDetectorFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;Landroid/view/GestureDetector$OnGestureListener;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 378
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method
