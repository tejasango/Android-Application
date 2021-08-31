.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$EpicenterCallback;,
        Landroid/support/transition/Transition$ArrayListManager;,
        Landroid/support/transition/Transition$AnimationInfo;,
        Landroid/support/transition/Transition$TransitionListener;,
        Landroid/support/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSet;

.field private mPathMotion:Landroid/support/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroid/support/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 170
    new-instance v0, Landroid/support/transition/Transition$1;

    invoke-direct {v0}, Landroid/support/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    .line 204
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 199
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 228
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 232
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 235
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 199
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 228
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 232
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 235
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 275
    sget-object v0, Landroid/support/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 277
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v3, "duration"

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v5, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v5, v3

    .line 279
    .local v5, "duration":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_84

    .line 280
    invoke-virtual {p0, v5, v6}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 282
    :cond_84
    const-string v3, "startDelay"

    const/4 v9, 0x2

    invoke-static {v0, v2, v3, v9, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    .line 284
    .local v3, "startDelay":J
    cmp-long v9, v3, v7

    if-lez v9, :cond_93

    .line 285
    invoke-virtual {p0, v3, v4}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    .line 287
    :cond_93
    const-string v7, "interpolator"

    invoke-static {v0, v2, v7, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 289
    .local v1, "resId":I
    if-lez v1, :cond_a2

    .line 290
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 292
    :cond_a2
    const-string v7, "matchOrder"

    const/4 v8, 0x3

    invoke-static {v0, v2, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "matchOrder":Ljava/lang/String;
    if-eqz v7, :cond_b2

    .line 295
    invoke-static {v7}, Landroid/support/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/transition/Transition;->setMatchOrder([I)V

    .line 297
    :cond_b2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void
.end method

.method private addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_24

    .line 645
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 646
    .local v2, "start":Landroid/support/transition/TransitionValues;
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 647
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v2    # "start":Landroid/support/transition/TransitionValues;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 653
    .end local v1    # "i":I
    :cond_24
    nop

    .local v0, "i":I
    :goto_25
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 654
    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 655
    .local v1, "end":Landroid/support/transition/TransitionValues;
    iget-object v2, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 656
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v2, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v1    # "end":Landroid/support/transition/TransitionValues;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 660
    .end local v0    # "i":I
    :cond_46
    return-void
.end method

.method private static addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V
    .registers 12
    .param p0, "transitionValuesMaps"    # Landroid/support/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 1531
    iget-object v0, p0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1533
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1f

    .line 1534
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1536
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 1538
    :cond_1a
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1541
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1542
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 1543
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1545
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 1547
    :cond_33
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_7d

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1552
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1553
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1554
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1555
    .local v5, "itemId":J
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_74

    .line 1557
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1558
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_73

    .line 1559
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1560
    iget-object v8, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1562
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_73
    goto :goto_7d

    .line 1563
    :cond_74
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1564
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1568
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_7d
    :goto_7d
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 528
    aget v0, p0, p1

    .line 529
    .local v0, "value":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p1, :cond_f

    .line 530
    aget v3, p0, v2

    if-ne v3, v0, :cond_c

    .line 531
    const/4 v1, 0x1

    return v1

    .line 529
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 534
    .end local v2    # "i":I
    :cond_f
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1598
    if-nez p1, :cond_3

    .line 1599
    return-void

    .line 1601
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1602
    .local v0, "id":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1603
    return-void

    .line 1605
    :cond_18
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1606
    return-void

    .line 1608
    :cond_25
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 1609
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1610
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v1, :cond_45

    .line 1611
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1612
    return-void

    .line 1610
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1616
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_72

    .line 1617
    new-instance v1, Landroid/support/transition/TransitionValues;

    invoke-direct {v1}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1618
    .local v1, "values":Landroid/support/transition/TransitionValues;
    iput-object p1, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1619
    if-eqz p2, :cond_5a

    .line 1620
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_5d

    .line 1622
    :cond_5a
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1624
    :goto_5d
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1626
    if-eqz p2, :cond_6d

    .line 1627
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_72

    .line 1629
    :cond_6d
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1632
    .end local v1    # "values":Landroid/support/transition/TransitionValues;
    :cond_72
    :goto_72
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c7

    .line 1634
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_87

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1635
    return-void

    .line 1637
    :cond_87
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_94

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1638
    return-void

    .line 1640
    :cond_94
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b3

    .line 1641
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1642
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9f
    if-ge v3, v1, :cond_b3

    .line 1643
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 1644
    return-void

    .line 1642
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 1648
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_b3
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1649
    .local v1, "parent":Landroid/view/ViewGroup;
    nop

    .local v2, "i":I
    :goto_b7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c7

    .line 1650
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1649
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 1653
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c7
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 5
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1308
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_15

    .line 1309
    if-eqz p3, :cond_d

    .line 1310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_15

    .line 1312
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1315
    :cond_15
    :goto_15
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1159
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    .line 1160
    if-eqz p2, :cond_9

    .line 1161
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_d

    .line 1163
    :cond_9
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1166
    :cond_d
    :goto_d
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1391
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_d

    .line 1392
    if-eqz p3, :cond_9

    .line 1393
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    .line 1395
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1398
    :cond_d
    :goto_d
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1323
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_d

    .line 1324
    if-eqz p3, :cond_9

    .line 1325
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    .line 1327
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1330
    :cond_d
    :goto_d
    return-object p1
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 857
    sget-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 858
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_15

    .line 859
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 860
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 862
    :cond_15
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3
    .param p0, "match"    # I

    .line 524
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 6
    .param p0, "oldValues"    # Landroid/support/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1862
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1863
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1865
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_12

    if-nez v1, :cond_12

    .line 1867
    const/4 v2, 0x0

    goto :goto_1f

    .line 1868
    :cond_12
    if-eqz v0, :cond_1e

    if-nez v1, :cond_17

    goto :goto_1e

    .line 1873
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1870
    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    .line 1873
    .local v2, "changed":Z
    :goto_1f
    nop

    .line 1880
    return v2
.end method

.method private matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 592
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 594
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 595
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 596
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 597
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 598
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 599
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 600
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 608
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_3d

    .line 544
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 545
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3a

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 546
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 547
    .local v2, "end":Landroid/support/transition/TransitionValues;
    if-eqz v2, :cond_3a

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_3a

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 548
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 549
    .local v3, "start":Landroid/support/transition/TransitionValues;
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroid/support/transition/TransitionValues;
    .end local v3    # "start":Landroid/support/transition/TransitionValues;
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 554
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method private matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 565
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 566
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 567
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 568
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 569
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 570
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 571
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 572
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 573
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 581
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 619
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 620
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 621
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 622
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 623
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 624
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 625
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 626
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 627
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 635
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .registers 8
    .param p1, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValuesMaps;

    .line 664
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 665
    .local v0, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 667
    .local v1, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    .line 668
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_40

    goto :goto_38

    .line 681
    :pswitch_1c
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_38

    .line 677
    :pswitch_24
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 679
    goto :goto_38

    .line 673
    :pswitch_2c
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 675
    goto :goto_38

    .line 670
    :pswitch_34
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 671
    nop

    .line 667
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 686
    .end local v2    # "i":I
    :cond_3b
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 687
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 305
    .local v1, "matches":[I
    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    .line 306
    .local v1, "index":I
    .local v3, "matches":[I
    :goto_10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "token":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2b

    .line 309
    const/4 v5, 0x3

    aput v5, v3, v1

    goto :goto_5f

    .line 310
    :cond_2b
    const-string v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 311
    aput v6, v3, v1

    goto :goto_5f

    .line 312
    :cond_36
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 313
    const/4 v5, 0x2

    aput v5, v3, v1

    goto :goto_5f

    .line 314
    :cond_42
    const-string v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 315
    const/4 v5, 0x4

    aput v5, v3, v1

    goto :goto_5f

    .line 316
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 318
    array-length v5, v3

    sub-int/2addr v5, v6

    new-array v5, v5, [I

    .line 319
    .local v5, "smallerMatches":[I
    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object v3, v5

    .line 321
    add-int/lit8 v1, v1, -0x1

    .line 322
    .end local v5    # "smallerMatches":[I
    nop

    .line 325
    :goto_5f
    add-int/2addr v1, v6

    .line 326
    .end local v4    # "token":Ljava/lang/String;
    goto :goto_10

    .line 323
    .restart local v4    # "token":Ljava/lang/String;
    :cond_61
    new-instance v2, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    .end local v4    # "token":Ljava/lang/String;
    :cond_7d
    return-object v3
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p2, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 896
    new-instance v0, Landroid/support/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/Transition$2;-><init>(Landroid/support/transition/Transition;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 910
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2033
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2036
    :cond_b
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1022
    if-eqz p1, :cond_b

    .line 1023
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 998
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "targetType"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1077
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1080
    :cond_b
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1047
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1050
    :cond_b
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1895
    if-nez p1, :cond_6

    .line 1896
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    goto :goto_3e

    .line 1898
    :cond_6
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 1899
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1901
    :cond_17
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_26

    .line 1902
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1904
    :cond_26
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1905
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1907
    :cond_33
    new-instance v0, Landroid/support/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/support/transition/Transition$3;-><init>(Landroid/support/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1914
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1916
    :goto_3e
    return-void
.end method

.method protected cancel()V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2009
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 2010
    iget-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2011
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 2009
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2013
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 2014
    iget-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2015
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2016
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2017
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_3f

    .line 2018
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/support/transition/Transition;)V

    .line 2017
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 2021
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .registers 7
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 2180
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2181
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2182
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_15

    .line 2183
    return-void

    .line 2185
    :cond_15
    const/4 v1, 0x1

    .line 2186
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 2187
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2188
    const/4 v1, 0x0

    .line 2189
    goto :goto_29

    .line 2186
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2192
    .end local v2    # "i":I
    :cond_29
    :goto_29
    if-nez v1, :cond_30

    .line 2193
    iget-object v2, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPropagation;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 2196
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_30
    return-void
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1468
    invoke-virtual {p0, p2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 1469
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    :cond_14
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_20
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_32

    .line 1510
    :cond_2d
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_ae

    .line 1472
    :cond_32
    :goto_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 1473
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1474
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1475
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_72

    .line 1476
    new-instance v4, Landroid/support/transition/TransitionValues;

    invoke-direct {v4}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1477
    .local v4, "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1478
    if-eqz p2, :cond_5a

    .line 1479
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_5d

    .line 1481
    :cond_5a
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1483
    :goto_5d
    iget-object v5, v4, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1485
    if-eqz p2, :cond_6d

    .line 1486
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_72

    .line 1488
    :cond_6d
    iget-object v5, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1472
    .end local v2    # "id":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "values":Landroid/support/transition/TransitionValues;
    :cond_72
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1492
    .end local v0    # "i":I
    :cond_75
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_76
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_ae

    .line 1493
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1494
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/support/transition/TransitionValues;

    invoke-direct {v3}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1495
    .local v3, "values":Landroid/support/transition/TransitionValues;
    iput-object v2, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1496
    if-eqz p2, :cond_93

    .line 1497
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_96

    .line 1499
    :cond_93
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1501
    :goto_96
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1503
    if-eqz p2, :cond_a6

    .line 1504
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_ab

    .line 1506
    :cond_a6
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1492
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroid/support/transition/TransitionValues;
    :goto_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 1512
    .end local v0    # "i":I
    :cond_ae
    :goto_ae
    if-nez p2, :cond_f5

    iget-object v0, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_f5

    .line 1513
    iget-object v0, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1514
    .local v0, "numOverrides":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    .local v2, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c0
    if-ge v3, v0, :cond_d8

    .line 1516
    iget-object v4, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1517
    .local v4, "fromName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    .end local v4    # "fromName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    .line 1519
    .end local v3    # "i":I
    :cond_d8
    nop

    .local v1, "i":I
    :goto_d9
    if-ge v1, v0, :cond_f5

    .line 1520
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1521
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_f2

    .line 1522
    iget-object v4, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1523
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_d9

    .line 1527
    .end local v0    # "numOverrides":I
    .end local v1    # "i":I
    .end local v2    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_f5
    return-void
.end method

.method clearValues(Z)V
    .registers 3
    .param p1, "start"    # Z

    .line 1576
    if-eqz p1, :cond_18

    .line 1577
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1578
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1579
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_2d

    .line 1581
    :cond_18
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1582
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1583
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1585
    :goto_2d
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .registers 4

    .line 2215
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 2216
    .local v1, "clone":Landroid/support/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2217
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2218
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2219
    iput-object v0, v1, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2220
    iput-object v0, v1, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    .line 2221
    return-object v1

    .line 2222
    .end local v1    # "clone":Landroid/support/transition/Transition;
    :catch_21
    move-exception v1

    .line 2223
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 31
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 708
    .local v8, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 709
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 710
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 711
    .local v10, "startValuesListCount":I
    move-wide v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "minStartDelay":J
    :goto_19
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_155

    .line 712
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 713
    .local v0, "start":Landroid/support/transition/TransitionValues;
    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 714
    .local v1, "end":Landroid/support/transition/TransitionValues;
    if-eqz v0, :cond_37

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 715
    const/4 v0, 0x0

    .line 717
    .end local v0    # "start":Landroid/support/transition/TransitionValues;
    .local v15, "start":Landroid/support/transition/TransitionValues;
    :cond_37
    move-object v15, v0

    if-eqz v1, :cond_43

    iget-object v0, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 718
    const/4 v1, 0x0

    .line 720
    .end local v1    # "end":Landroid/support/transition/TransitionValues;
    .local v5, "end":Landroid/support/transition/TransitionValues;
    :cond_43
    move-object v5, v1

    if-nez v15, :cond_4f

    if-nez v5, :cond_4f

    .line 721
    nop

    .line 711
    move/from16 v19, v10

    move/from16 v22, v12

    goto/16 :goto_14f

    .line 724
    :cond_4f
    if-eqz v15, :cond_5c

    if-eqz v5, :cond_5c

    invoke-virtual {v6, v15, v5}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v0, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    :goto_5d
    move/from16 v16, v0

    .line 725
    .local v16, "isChanged":Z
    if-eqz v16, :cond_14b

    .line 744
    invoke-virtual {v6, v7, v15, v5}, Landroid/support/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 745
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_14b

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, "infoValues":Landroid/support/transition/TransitionValues;
    if-eqz v5, :cond_107

    .line 750
    iget-object v4, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 751
    .local v4, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v11

    .line 752
    .local v11, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_fb

    if-eqz v11, :cond_fb

    move-object/from16 v18, v0

    .end local v0    # "animator":Landroid/animation/Animator;
    .local v18, "animator":Landroid/animation/Animator;
    array-length v0, v11

    if-lez v0, :cond_f6

    .line 753
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    move-object v1, v0

    .line 754
    iput-object v4, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 755
    move-object/from16 v0, p3

    move/from16 v19, v10

    .end local v10    # "startValuesListCount":I
    .local v19, "startValuesListCount":I
    iget-object v10, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/transition/TransitionValues;

    .line 756
    .local v10, "newValues":Landroid/support/transition/TransitionValues;
    if-eqz v10, :cond_b8

    .line 757
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_91
    move/from16 v21, v20

    .end local v20    # "j":I
    .local v21, "j":I
    array-length v0, v11

    move/from16 v13, v21

    .end local v21    # "j":I
    .local v13, "j":I
    if-ge v13, v0, :cond_b8

    .line 758
    iget-object v0, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v14, v11, v13

    move/from16 v22, v12

    .end local v12    # "i":I
    .local v22, "i":I
    iget-object v12, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v23, v10

    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .local v23, "newValues":Landroid/support/transition/TransitionValues;
    aget-object v10, v11, v13

    .line 759
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 758
    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    add-int/lit8 v20, v13, 0x1

    move/from16 v12, v22

    move-object/from16 v10, v23

    move-object/from16 v0, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    goto :goto_91

    .line 762
    .end local v13    # "j":I
    .end local v22    # "i":I
    .end local v23    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v12    # "i":I
    :cond_b8
    move-object/from16 v23, v10

    move/from16 v22, v12

    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v12    # "i":I
    .restart local v22    # "i":I
    .restart local v23    # "newValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 763
    .local v0, "numExistingAnims":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_c1
    if-ge v10, v0, :cond_101

    .line 764
    invoke-virtual {v8, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 765
    .local v12, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v12}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/transition/Transition$AnimationInfo;

    .line 766
    .local v13, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    if-eqz v14, :cond_ef

    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v14, v4, :cond_ef

    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 767
    move/from16 v24, v0

    .end local v0    # "numExistingAnims":I
    .local v24, "numExistingAnims":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 768
    iget-object v0, v13, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 770
    const/4 v0, 0x0

    .line 771
    .end local v18    # "animator":Landroid/animation/Animator;
    .local v0, "animator":Landroid/animation/Animator;
    goto :goto_103

    .line 763
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v13    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v24    # "numExistingAnims":I
    .local v0, "numExistingAnims":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    :cond_ef
    move/from16 v24, v0

    .end local v0    # "numExistingAnims":I
    .restart local v24    # "numExistingAnims":I
    :cond_f1
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v24

    goto :goto_c1

    .line 776
    .end local v11    # "properties":[Ljava/lang/String;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .end local v23    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v24    # "numExistingAnims":I
    .local v10, "startValuesListCount":I
    .local v12, "i":I
    :cond_f6
    move/from16 v19, v10

    move/from16 v22, v12

    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    goto :goto_101

    .end local v18    # "animator":Landroid/animation/Animator;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .local v0, "animator":Landroid/animation/Animator;
    .restart local v10    # "startValuesListCount":I
    .restart local v12    # "i":I
    :cond_fb
    move-object/from16 v18, v0

    move/from16 v19, v10

    move/from16 v22, v12

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    :cond_101
    :goto_101
    move-object/from16 v0, v18

    .line 777
    .end local v18    # "animator":Landroid/animation/Animator;
    .restart local v0    # "animator":Landroid/animation/Animator;
    :goto_103
    move-object v10, v0

    move-object v11, v1

    move-object v1, v4

    goto :goto_113

    .end local v4    # "view":Landroid/view/View;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v12    # "i":I
    :cond_107
    move-object/from16 v18, v0

    move/from16 v19, v10

    move/from16 v22, v12

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    iget-object v0, v15, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v1

    move-object/from16 v10, v18

    move-object v1, v0

    .line 779
    .end local v18    # "animator":Landroid/animation/Animator;
    .local v1, "view":Landroid/view/View;
    .local v10, "animator":Landroid/animation/Animator;
    .local v11, "infoValues":Landroid/support/transition/TransitionValues;
    :goto_113
    if-eqz v10, :cond_14f

    .line 780
    iget-object v0, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_12d

    .line 781
    iget-object v0, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0, v7, v6, v15, v5}, Landroid/support/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J

    move-result-wide v12

    .line 782
    .local v12, "delay":J
    iget-object v0, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    long-to-int v4, v12

    invoke-virtual {v9, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 785
    .end local v2    # "minStartDelay":J
    .local v12, "minStartDelay":J
    :cond_12d
    move-wide v12, v2

    new-instance v14, Landroid/support/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v14

    move-object/from16 v3, p0

    move-object/from16 v18, v5

    .end local v5    # "end":Landroid/support/transition/TransitionValues;
    .local v18, "end":Landroid/support/transition/TransitionValues;
    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V

    .line 787
    .local v0, "info":Landroid/support/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v10, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v2, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    move-wide v2, v12

    goto :goto_14f

    .end local v0    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v1    # "view":Landroid/view/View;
    .end local v11    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v15    # "start":Landroid/support/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .end local v18    # "end":Landroid/support/transition/TransitionValues;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .restart local v2    # "minStartDelay":J
    .local v10, "startValuesListCount":I
    .local v12, "i":I
    :cond_14b
    move/from16 v19, v10

    move/from16 v22, v12

    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    :cond_14f
    :goto_14f
    add-int/lit8 v0, v22, 0x1

    move/from16 v10, v19

    goto/16 :goto_19

    .line 793
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .restart local v10    # "startValuesListCount":I
    :cond_155
    move/from16 v19, v10

    .end local v10    # "startValuesListCount":I
    .restart local v19    # "startValuesListCount":I
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_184

    .line 794
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_15f
    move/from16 v0, v17

    .end local v17    # "i":I
    .local v0, "i":I
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_184

    .line 795
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 796
    .local v1, "index":I
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 797
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v10, v2

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 798
    .local v10, "delay":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 794
    .end local v1    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v17, v0, 0x1

    goto :goto_15f

    .line 801
    .end local v0    # "i":I
    :cond_184
    return-void
.end method

.method protected end()V
    .registers 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1954
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1955
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_6e

    .line 1956
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 1957
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1958
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1959
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1960
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v3, :cond_32

    .line 1961
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/support/transition/Transition;)V

    .line 1960
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1964
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4f

    .line 1965
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1966
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4c

    .line 1967
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1964
    .end local v3    # "view":Landroid/view/View;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1970
    .end local v0    # "i":I
    :cond_4f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_50
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_6c

    .line 1971
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1972
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_69

    .line 1973
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1970
    .end local v3    # "view":Landroid/view/View;
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1976
    .end local v0    # "i":I
    :cond_6c
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1978
    :cond_6e
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1299
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1300
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1269
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1270
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1382
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1383
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1217
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1218
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1191
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1192
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1355
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1356
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1243
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/support/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1244
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1987
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1988
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1989
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_32

    .line 1990
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1991
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_32

    .line 1992
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1993
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_2f

    if-eqz v2, :cond_2f

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1994
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1995
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1991
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1999
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    .end local v3    # "i":I
    :cond_32
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 354
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2137
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_6

    .line 2138
    const/4 v0, 0x0

    return-object v0

    .line 2140
    :cond_6
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/support/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2124
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 409
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1682
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_b

    .line 1683
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1685
    :cond_b
    if-eqz p2, :cond_10

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1686
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_12
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1687
    return-object v1

    .line 1689
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1690
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1691
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v2, :cond_30

    .line 1692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 1693
    .local v5, "values":Landroid/support/transition/TransitionValues;
    if-nez v5, :cond_27

    .line 1694
    return-object v1

    .line 1696
    :cond_27
    iget-object v6, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_2d

    .line 1697
    move v3, v4

    .line 1698
    goto :goto_30

    .line 1691
    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1701
    .end local v4    # "i":I
    :cond_30
    :goto_30
    const/4 v1, 0x0

    .line 1702
    .local v1, "values":Landroid/support/transition/TransitionValues;
    if-ltz v3, :cond_41

    .line 1703
    if-eqz p2, :cond_38

    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3a

    :cond_38
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1704
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_3a
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 1706
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :cond_41
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2241
    iget-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroid/support/transition/PathMotion;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2094
    iget-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/support/transition/TransitionPropagation;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2172
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 381
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1663
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_b

    .line 1664
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_b
    if-eqz p2, :cond_10

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1667
    .local v0, "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :goto_12
    iget-object v1, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .registers 9
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1836
    const/4 v0, 0x0

    .line 1839
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    .line 1840
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 1842
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3

    .line 1843
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1844
    const/4 v0, 0x1

    .line 1845
    goto :goto_3b

    .line 1842
    .end local v4    # "property":Ljava/lang/String;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1849
    :cond_1c
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1850
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1851
    const/4 v0, 0x1

    .line 1852
    goto :goto_3b

    .line 1854
    .end local v3    # "key":Ljava/lang/String;
    :cond_3a
    goto :goto_26

    .line 1857
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 815
    .local v0, "targetId":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 816
    return v2

    .line 818
    :cond_16
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 819
    return v2

    .line 821
    :cond_23
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_42

    .line 822
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 823
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v1, :cond_42

    .line 824
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 825
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 826
    return v2

    .line 823
    .end local v4    # "type":Ljava/lang/Class;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 830
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_42
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_59

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 831
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 832
    return v2

    .line 835
    :cond_59
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_83

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_76

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_83

    :cond_76
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_82

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 838
    :cond_82
    return v3

    .line 840
    :cond_83
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    goto :goto_c9

    .line 843
    :cond_98
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_a9

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 844
    return v3

    .line 846
    :cond_a9
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_c8

    .line 847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ae
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c8

    .line 848
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 849
    return v3

    .line 847
    :cond_c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 853
    .end local v1    # "i":I
    :cond_c8
    return v2

    .line 841
    :cond_c9
    :goto_c9
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1718
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v0, :cond_5c

    .line 1719
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1720
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1721
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1722
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_32

    .line 1723
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1724
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_2f

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1725
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1726
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroid/support/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1722
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 1729
    .end local v3    # "i":I
    :cond_32
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    .line 1730
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1731
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1732
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1733
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    if-ge v5, v4, :cond_59

    .line 1734
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionPause(Landroid/support/transition/Transition;)V

    .line 1733
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1737
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_59
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1739
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    :cond_5c
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1783
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 1785
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1786
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1787
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1788
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_75

    .line 1789
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1790
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_72

    .line 1791
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    .line 1792
    .local v5, "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_72

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_72

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 1793
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1794
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 1795
    .local v6, "oldValues":Landroid/support/transition/TransitionValues;
    iget-object v7, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1796
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v9

    .line 1797
    .local v9, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v10

    .line 1798
    .local v10, "endValues":Landroid/support/transition/TransitionValues;
    if-nez v9, :cond_52

    if-eqz v10, :cond_5b

    :cond_52
    iget-object v11, v5, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    .line 1799
    invoke-virtual {v11, v6, v10}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v8, 0x0

    .line 1800
    .local v8, "cancel":Z
    :goto_5c
    if-eqz v8, :cond_72

    .line 1801
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_6f

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_6b

    goto :goto_6f

    .line 1810
    :cond_6b
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 1805
    :cond_6f
    :goto_6f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1788
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_72
    :goto_72
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1817
    .end local v3    # "i":I
    :cond_75
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1818
    invoke-virtual {p0}, Landroid/support/transition/Transition;->runAnimators()V

    .line 1819
    return-void
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2049
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2050
    return-object p0

    .line 2052
    :cond_5
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2053
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2056
    :cond_15
    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1112
    if-eqz p1, :cond_b

    .line 1113
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1115
    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1096
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1097
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "target"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1148
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1149
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1151
    :cond_9
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1130
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1131
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1133
    :cond_9
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 10
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1750
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_60

    .line 1751
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    .line 1752
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1753
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1754
    .local v2, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v3

    .line 1755
    .local v3, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_17
    if-ltz v4, :cond_37

    .line 1756
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    .line 1757
    .local v5, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_34

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1758
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 1759
    .local v6, "anim":Landroid/animation/Animator;
    invoke-static {v6}, Landroid/support/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1755
    .end local v5    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_34
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 1762
    .end local v4    # "i":I
    :cond_37
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5e

    .line 1763
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1764
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1765
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1766
    .local v5, "numListeners":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_50
    if-ge v6, v5, :cond_5e

    .line 1767
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v7, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionResume(Landroid/support/transition/Transition;)V

    .line 1766
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 1771
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v2    # "numOldAnims":I
    .end local v3    # "windowId":Landroid/support/transition/WindowIdImpl;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v5    # "numListeners":I
    .end local v6    # "i":I
    :cond_5e
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1773
    :cond_60
    return-void
.end method

.method protected runAnimators()V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 876
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 877
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 879
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 883
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 884
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 885
    invoke-direct {p0, v2, v0}, Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    .line 887
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_25
    goto :goto_d

    .line 888
    :cond_26
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 889
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    .line 890
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .line 2204
    iput-boolean p1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 2205
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 341
    iput-wide p1, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 342
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .registers 2
    .param p1, "epicenterCallback"    # Landroid/support/transition/Transition$EpicenterCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2109
    iput-object p1, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    .line 2110
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 395
    iput-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 396
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 6
    .param p1, "matches"    # [I

    .line 507
    if-eqz p1, :cond_34

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_34

    .line 510
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 511
    aget v1, p1, v0

    .line 512
    .local v1, "match":I
    invoke-static {v1}, Landroid/support/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 515
    invoke-static {p1, v0}, Landroid/support/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 510
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 516
    .restart local v1    # "match":I
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    goto :goto_38

    .line 508
    :cond_34
    :goto_34
    sget-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 521
    :goto_38
    return-void
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .registers 3
    .param p1, "pathMotion"    # Landroid/support/transition/PathMotion;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2076
    if-nez p1, :cond_7

    .line 2077
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    goto :goto_9

    .line 2079
    :cond_7
    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 2081
    :goto_9
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .registers 2
    .param p1, "transitionPropagation"    # Landroid/support/transition/TransitionPropagation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2155
    iput-object p1, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    .line 2156
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2199
    iput-object p1, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2200
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .registers 3
    .param p1, "startDelay"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 368
    iput-wide p1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 369
    return-object p0
.end method

.method protected start()V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1927
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_2e

    .line 1928
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1929
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1930
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1931
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1932
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_2c

    .line 1933
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionStart(Landroid/support/transition/Transition;)V

    .line 1932
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1936
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_2c
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1938
    :cond_2e
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1939
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2209
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "indent"    # Ljava/lang/String;

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroid/support/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4f

    .line 2248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dur("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/support/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    :cond_4f
    iget-wide v1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_70

    .line 2251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dly("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    :cond_70
    iget-object v1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_8f

    .line 2254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "interp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    :cond_8f
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9f

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13d

    .line 2257
    :cond_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_ef

    .line 2259
    move-object v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "result":Ljava/lang/String;
    :goto_bb
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_ee

    .line 2260
    if-lez v0, :cond_d6

    .line 2261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2263
    :cond_d6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2259
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 2266
    .end local v0    # "i":I
    :cond_ee
    move-object v0, v1

    .end local v1    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    :cond_ef
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12c

    .line 2267
    nop

    .local v2, "i":I
    :goto_f8
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12c

    .line 2268
    if-lez v1, :cond_114

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    :cond_114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2267
    add-int/lit8 v2, v1, 0x1

    goto :goto_f8

    .line 2274
    .end local v1    # "i":I
    :cond_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    :cond_13d
    return-object v0
.end method
