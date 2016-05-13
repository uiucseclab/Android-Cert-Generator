.class public interface abstract annotation Ljavax/annotation/Tainted;
.super Ljava/lang/Object;
.source "max_scheduled_traces_age_sec"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Ljavax/annotation/Untainted;
    when = .enum Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;
.end annotation

.annotation build Ljavax/annotation/meta/TypeQualifierNickname;
.end annotation
