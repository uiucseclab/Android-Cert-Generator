.class public Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;
.super Ljava/lang/Object;
.source "RenderScriptBlur.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final rs:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Lcom/samsung/milk/milkvideo/utils/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->rs:Landroid/renderscript/RenderScript;

    .line 21
    return-void
.end method

.method private static blur(Landroid/renderscript/RenderScript;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "radius"    # I
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 30
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 31
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 32
    .local v2, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 33
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 35
    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 36
    return-object p2
.end method


# virtual methods
.method public blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->rs:Landroid/renderscript/RenderScript;

    const/16 v1, 0x19

    invoke-static {v0, v1, p1}, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->blur(Landroid/renderscript/RenderScript;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
