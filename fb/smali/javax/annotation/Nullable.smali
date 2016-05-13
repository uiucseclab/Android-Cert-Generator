.class public interface abstract annotation Ljavax/annotation/Nullable;
.super Ljava/lang/Object;
.source "reg_error"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Ljavax/annotation/Nonnull;
    when = .enum Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;
.end annotation

.annotation build Ljavax/annotation/meta/TypeQualifierNickname;
.end annotation
