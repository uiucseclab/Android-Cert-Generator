.class public Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;
.super Landroid/app/Fragment;
.source "progressive"

# interfaces
.implements Lcom/squareup/seismic/ShakeDetector$Listener;


# instance fields
.field private final a:Lcom/squareup/seismic/ShakeDetector;

.field private b:I

.field private c:J

.field private d:Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    new-instance v0, Lcom/squareup/seismic/ShakeDetector;

    invoke-direct {v0, p0}, Lcom/squareup/seismic/ShakeDetector;-><init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V

    iput-object v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->a:Lcom/squareup/seismic/ShakeDetector;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->c:J

    sub-long v2, v0, v2

    .line 79
    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 80
    iget v2, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->b:I

    .line 84
    :goto_0
    iput-wide v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->c:J

    .line 85
    iget v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->d:Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dump_debug_info_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment$1;-><init>(Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->b:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    .line 101
    new-instance v1, Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;

    invoke-direct {v1}, Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;-><init>()V

    .line 102
    move-object v0, v1

    iput-object v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->d:Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;

    .line 39
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->a:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector;->a()V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dump_debug_info_dialog_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->d:Lcom/facebook/browser/lite/widget/DumpDebugInfoDialogFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 50
    iget-object v1, p0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->a:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector;->a(Landroid/hardware/SensorManager;)Z

    .line 51
    return-void
.end method
