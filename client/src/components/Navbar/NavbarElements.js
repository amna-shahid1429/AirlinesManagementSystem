import { FaBars } from 'react-icons/fa';
import { NavLink as Link } from 'react-router-dom';
import styled from 'styled-components';

export const Nav = styled.nav`
  background: #67001F;
  height: 90px;
  display: flex;
  z-index: 10;
  box-shadow: 0px 1px 10px #999 ;
`;

export const NavLink = styled(Link)`
  font-size: 20px;
  color: #FFFFFF;
  display: flex;
  align-items: center;
  text-decoration: none;
  padding: 0 1rem;
  height: 100%;
  cursor: pointer;
  
  &:hover {
    color: #999;
  }

  // &.active {
  //   color: #15cdfc;
  // }
`;


export const Bars = styled(FaBars)`
  display: none;
  color: #FFFFFF;
`;

export const NavMenu = styled.div`
  display: flex;
  margin-right: 500px;
  margin-left:400px;
  
`;

export const NavBtn = styled.nav`
  display: block;
  margin-top:30px;
  margin-right: -120px;
  margin-left:150px;
`;

export const NavBtnLink = styled(Link)`  
border-radius: 4px;
  background: #FFFFFF;
  padding: 10px 22px;
  color: #67001F;
  outline: none;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease-in-out;
  text-decoration: none;
  &:hover {
    transition: all 0.2s ease-in-out;
    background: #FFFFFF;
    color: #67001F;
  }
`;