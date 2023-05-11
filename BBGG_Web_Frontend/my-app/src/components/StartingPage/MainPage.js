import React from 'react';
import classes from './MainPage.module.css';
import IntroduceBBGG from "../../images/IntroduceBBGG.png"
import NightMarket from "../../images/NightMarket.png"
import yummy from "../../images/yummy.png"

const MainPage = () => {
    const imglist = [IntroduceBBGG, NightMarket, yummy]
    const delay = 2500;

    const [State, setState] = React.useState(0);
    const timeRef = React.useRef(null);

    function resetTimeout() {
        if (timeRef.current) {
            clearTimeout(timeRef.current);
        }
    }

    React.useEffect(() => {
        resetTimeout();
        timeRef.current = setTimeout(
            () =>
                setState((prevState) =>
                    prevState === 3 - 1 ? 0 : prevState + 1), delay);

        return () => {
            resetTimeout();
        };
    }, [State]);

    return (
        <div>
            <div className={classes.headerSpacer}></div>
                <img src={imglist[State]} className={classes.marketimg} alt="banner"></img>
            <div className={classes.underAdContainer}>
                <div className={classes.recommendString}>추천 여행지</div>
                <div className={classes.container}>
                    <button className={classes.recommendImg1}>서울특별시</button>
                    <button className={classes.recommendImg2}>경기도</button>
                    <button className={classes.recommendImg3}>대전광역시</button>
                    <button className={classes.recommendImg4}>대구광역시</button>
                    <button className={classes.recommendImg5}>부산광역시</button>
                </div>
            </div>
            <div className={classes.threeContents}>
                
            </div>
        </div>
    )

};

export default MainPage;
